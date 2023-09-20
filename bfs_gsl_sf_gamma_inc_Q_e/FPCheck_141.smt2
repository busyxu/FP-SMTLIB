(declare-fun a_ack!386 () (_ BitVec 64))
(declare-fun b_ack!385 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!385)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!386)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!386) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!385)
                       ((_ to_fp 11 53) a_ack!386))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!385)
                       ((_ to_fp 11 53) a_ack!386)))
       ((_ to_fp 11 53) a_ack!386)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!385)
                                   ((_ to_fp 11 53) a_ack!386))
                           ((_ to_fp 11 53) a_ack!386))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!385)
                                   ((_ to_fp 11 53) a_ack!386))
                           ((_ to_fp 11 53) a_ack!386)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!385)
                           ((_ to_fp 11 53) a_ack!386))
                   ((_ to_fp 11 53) a_ack!386))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fbc71c71c71c71c)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbfb999999999999a))))))

(check-sat)
(exit)
