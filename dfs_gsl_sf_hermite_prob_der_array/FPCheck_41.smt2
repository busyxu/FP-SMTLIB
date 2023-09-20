(declare-fun b_ack!246 () (_ BitVec 32))
(declare-fun a_ack!248 () (_ BitVec 32))
(declare-fun c_ack!247 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!246 #x00000000)))
(assert (not (bvslt a_ack!248 #x00000000)))
(assert (not (= #x00000000 b_ack!246)))
(assert (not (= #x00000001 b_ack!246)))
(assert (= #x00000000 a_ack!248))
(assert (not (bvslt b_ack!246 #x00000000)))
(assert (not (= #x00000000 b_ack!246)))
(assert (not (= #x00000001 b_ack!246)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!247))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!246))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!247))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!247))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!246))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!247)
                                   ((_ to_fp 11 53) c_ack!247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x7feccccccccccccc)
                 (fp.abs ((_ to_fp 11 53) c_ack!247))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!247)
                                   ((_ to_fp 11 53) c_ack!247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3cb0000000000000)))

(check-sat)
(exit)
