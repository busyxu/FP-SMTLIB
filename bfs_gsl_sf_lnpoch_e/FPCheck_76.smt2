(declare-fun a_ack!229 () (_ BitVec 64))
(declare-fun b_ack!228 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!229)
                     ((_ to_fp 11 53) b_ack!228))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!228))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!229)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!228)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!228))
                           (CF_log a_ack!229))
                   (fp.abs ((_ to_fp 11 53) b_ack!228)))))
  (fp.eq a!1 (CF_log a_ack!229))))
(assert (not (fp.eq (fp.abs (CF_log a_ack!229)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!228))
                           (CF_log a_ack!229))
                   (CF_log a_ack!229))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!228)))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!228))
               (CF_log a_ack!229))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!229) ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!229 #x3ff0000000000000))

(check-sat)
(exit)
