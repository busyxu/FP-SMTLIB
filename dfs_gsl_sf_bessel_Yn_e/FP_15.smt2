(declare-fun a_ack!247 () (_ BitVec 32))
(declare-fun b_ack!246 () (_ BitVec 64))
(assert (not (bvslt a_ack!247 #x00000000)))
(assert (= #x00000000 a_ack!247))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!246))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           ((_ to_fp 11 53) b_ack!246))
                   ((_ to_fp 11 53) b_ack!246))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           ((_ to_fp 11 53) b_ack!246))
                   ((_ to_fp 11 53) b_ack!246))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
