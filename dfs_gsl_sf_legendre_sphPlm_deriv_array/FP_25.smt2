(declare-fun b_ack!405 () (_ BitVec 32))
(declare-fun a_ack!407 () (_ BitVec 32))
(declare-fun c_ack!406 () (_ BitVec 64))
(assert (not (bvslt b_ack!405 #x00000000)))
(assert (not (bvslt a_ack!407 b_ack!405)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!405))
(assert (not (bvslt a_ack!407 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!407)))
(assert (= #x00000001 a_ack!407))
(assert (bvsle #x00000000 a_ack!407))
(assert (bvsle #x00000001 a_ack!407))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!406)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!407)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!407)
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3e50000000000000))))
(assert (bvsle #x00000002 a_ack!407))

(check-sat)
(exit)
