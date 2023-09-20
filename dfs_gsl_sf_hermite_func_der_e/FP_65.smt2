(declare-fun a_ack!1832 () (_ BitVec 32))
(declare-fun b_ack!1830 () (_ BitVec 32))
(declare-fun c_ack!1831 () (_ BitVec 64))
(assert (not (bvslt a_ack!1832 #x00000000)))
(assert (not (bvslt b_ack!1830 #x00000000)))
(assert (= #x00000000 a_ack!1832))
(assert (not (bvslt b_ack!1830 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1831) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1830)))
(assert (= #x00000001 b_ack!1830))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #xbfe0000000000000)
                        ((_ to_fp 11 53) c_ack!1831)))
        ((_ to_fp 11 53) #x0010000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) c_ack!1831)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1831))
                           ((_ to_fp 11 53) c_ack!1831))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!1831)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!1831))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1831))
                           ((_ to_fp 11 53) c_ack!1831))
                   ((_ to_fp 11 53) c_ack!1831))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) c_ack!1831)))))

(check-sat)
(exit)
