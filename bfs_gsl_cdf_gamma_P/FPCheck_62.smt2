(declare-fun b_ack!453 () (_ BitVec 64))
(declare-fun x_ack!454 () (_ BitVec 64))
(declare-fun a_ack!452 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!454)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!453)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!454) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!454)
               ((_ to_fp 11 53) b_ack!453))
       ((_ to_fp 11 53) a_ack!452)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!454)
                    ((_ to_fp 11 53) b_ack!453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!454)
                    ((_ to_fp 11 53) b_ack!453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!454)
                     ((_ to_fp 11 53) b_ack!453))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!452)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!452) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!454)
               ((_ to_fp 11 53) b_ack!453))
       ((_ to_fp 11 53) #x4014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!454)
                                   ((_ to_fp 11 53) b_ack!453))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!1)
    a!1)))

(check-sat)
(exit)
