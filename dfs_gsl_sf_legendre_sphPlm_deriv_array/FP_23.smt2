(declare-fun b_ack!399 () (_ BitVec 32))
(declare-fun a_ack!401 () (_ BitVec 32))
(declare-fun c_ack!400 () (_ BitVec 64))
(assert (not (bvslt b_ack!399 #x00000000)))
(assert (not (bvslt a_ack!401 b_ack!399)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!400) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!400) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!399))
(assert (not (bvslt a_ack!401 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!400) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!400) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!401)))
(assert (= #x00000001 a_ack!401))
(assert (bvsle #x00000000 a_ack!401))
(assert (bvsle #x00000001 a_ack!401))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!400)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!401)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!401)
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (bvsle #x00000002 a_ack!401)))
(assert (bvsle #x00000000 a_ack!401))
(assert (not (bvsle #x00000001 a_ack!401)))

(check-sat)
(exit)
