(declare-fun a_ack!550 () (_ BitVec 64))
(declare-fun b_ack!549 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!549) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!549) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!549)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!550)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!550) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!549)
                       ((_ to_fp 11 53) a_ack!550))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!549)
                       ((_ to_fp 11 53) a_ack!550)))
       ((_ to_fp 11 53) a_ack!550)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!549)
                                   ((_ to_fp 11 53) a_ack!550))
                           ((_ to_fp 11 53) a_ack!550))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!549)
                                   ((_ to_fp 11 53) a_ack!550))
                           ((_ to_fp 11 53) a_ack!550)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.geq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!549)
                                   ((_ to_fp 11 53) a_ack!550))
                           ((_ to_fp 11 53) a_ack!550))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (ite a!1 #x00000001 #xffffffff))
            ((_ to_fp 11 53) #x0000000000000000))
    #x5fe279a74590331c)))

(check-sat)
(exit)
