(declare-fun a_ack!385 () (_ BitVec 32))
(declare-fun b_ack!384 () (_ BitVec 64))
(assert (bvslt a_ack!385 #x000003e8))
(assert (not (bvslt a_ack!385 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!384) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!385)))
(assert (= #x00000001 a_ack!385))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!384)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!384))
                           ((_ to_fp 11 53) b_ack!384))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!384)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!384))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!384))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!384))
                           ((_ to_fp 11 53) b_ack!384))
                   ((_ to_fp 11 53) b_ack!384))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!384)))))

(check-sat)
(exit)
