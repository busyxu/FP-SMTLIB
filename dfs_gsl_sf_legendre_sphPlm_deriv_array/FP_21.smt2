(declare-fun b_ack!375 () (_ BitVec 32))
(declare-fun a_ack!377 () (_ BitVec 32))
(declare-fun c_ack!376 () (_ BitVec 64))
(assert (not (bvslt b_ack!375 #x00000000)))
(assert (not (bvslt a_ack!377 b_ack!375)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!376) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!376) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!375))
(assert (not (bvslt a_ack!377 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!376) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!376) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!377)))
(assert (= #x00000001 a_ack!377))
(assert (bvsle #x00000000 a_ack!377))
(assert (bvsle #x00000001 a_ack!377))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!376)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!377)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.lt (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!377)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!376)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!377)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!377)
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (bvsle #x00000002 a_ack!377)))
(assert (bvsle #x00000000 a_ack!377))
(assert (bvsle #x00000001 a_ack!377))

(check-sat)
(exit)
