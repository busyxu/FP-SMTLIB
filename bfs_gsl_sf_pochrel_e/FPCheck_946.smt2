(declare-fun a_ack!2631 () (_ BitVec 64))
(declare-fun b_ack!2630 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2630))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2631))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2630)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2630))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) b_ack!2630)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2630))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!2630))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2630))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2631))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2630) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2631) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!2631) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2631) (CF_floor a_ack!2631)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2631)
                       ((_ to_fp 11 53) b_ack!2630))
               ((_ to_fp 11 53) a_ack!2631))
       ((_ to_fp 11 53) b_ack!2630)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2631)
                       ((_ to_fp 11 53) b_ack!2630))
               ((_ to_fp 11 53) b_ack!2630))
       ((_ to_fp 11 53) a_ack!2631)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2631)
               ((_ to_fp 11 53) b_ack!2630))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2630) (CF_floor b_ack!2630)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fb999999999999a
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!2631))))

(check-sat)
(exit)
