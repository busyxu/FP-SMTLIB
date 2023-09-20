(declare-fun b_ack!137 () (_ BitVec 32))
(declare-fun a_ack!139 () (_ BitVec 32))
(declare-fun c_ack!138 () (_ BitVec 64))
(assert (not (bvslt b_ack!137 #x00000000)))
(assert (not (bvslt a_ack!139 #x00000000)))
(assert (= #x00000000 a_ack!139))
(assert (not (bvslt b_ack!137 #x00000000)))
(assert (not (= #x00000000 b_ack!137)))
(assert (not (= #x00000001 b_ack!137)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!138)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!137))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7feccccccccccccc)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!138))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!138)))
                  a!1)))
  (not a!2))))

(check-sat)
(exit)
