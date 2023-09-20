(declare-fun a_ack!270 () (_ BitVec 32))
(declare-fun b_ack!269 () (_ BitVec 64))
(assert (not (bvslt a_ack!270 #x00000000)))
(assert (not (= #x00000000 a_ack!270)))
(assert (not (= #x00000001 a_ack!270)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!269) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!269))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!270))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!269))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!269))))))
  (not a!1)))
(assert (bvslt #x00000002 a_ack!270))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!269)
                                   ((_ to_fp 11 53) b_ack!269))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x7feccccccccccccc)
                 (fp.abs ((_ to_fp 11 53) b_ack!269))))))

(check-sat)
(exit)
