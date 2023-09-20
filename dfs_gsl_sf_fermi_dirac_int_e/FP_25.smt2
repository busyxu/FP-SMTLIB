(declare-fun a_ack!394 () (_ BitVec 32))
(declare-fun b_ack!393 () (_ BitVec 64))
(assert (not (bvslt a_ack!394 #xffffffff)))
(assert (not (= #xffffffff a_ack!394)))
(assert (not (= #x00000000 a_ack!394)))
(assert (not (= #x00000001 a_ack!394)))
(assert (= #x00000002 a_ack!394))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!393) ((_ to_fp 11 53) #x410428a2f98d7287)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x404e000000000000)
                                   ((_ to_fp 11 53) b_ack!393))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x404e000000000000)
                 ((_ to_fp 11 53) b_ack!393)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x404e000000000000)
                           ((_ to_fp 11 53) b_ack!393))
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x404e000000000000)
                                   ((_ to_fp 11 53) b_ack!393))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
