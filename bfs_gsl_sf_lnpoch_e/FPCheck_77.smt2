(declare-fun a_ack!231 () (_ BitVec 64))
(declare-fun b_ack!230 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!231)
                     ((_ to_fp 11 53) b_ack!230))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!230) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!230))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!231)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!231) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!230)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!230))
                           (CF_log a_ack!231))
                   (fp.abs ((_ to_fp 11 53) b_ack!230)))))
  (fp.eq a!1 (CF_log a_ack!231))))
(assert (not (fp.eq (fp.abs (CF_log a_ack!231)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!230))
                           (CF_log a_ack!231))
                   (CF_log a_ack!231))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!230)))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!230))
               (CF_log a_ack!231))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!231) ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!231 #x3ff0000000000000))

(check-sat)
(exit)
