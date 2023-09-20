(declare-fun a_ack!250 () (_ BitVec 32))
(assert (bvslt a_ack!250 #x00000000))
(assert (not (= #x00000000 (bvand a_ack!250 #x00000001))))
(assert (not (bvslt #xffffff9d a_ack!250)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!250)
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
