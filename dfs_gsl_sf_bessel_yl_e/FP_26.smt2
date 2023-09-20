(declare-fun a_ack!265 () (_ BitVec 32))
(declare-fun b_ack!264 () (_ BitVec 64))
(assert (not (bvslt a_ack!265 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!265)))
(assert (not (= #x00000001 a_ack!265)))
(assert (= #x00000002 a_ack!265))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!264)
                                  ((_ to_fp 11 53) b_ack!264)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!264)
                                   ((_ to_fp 11 53) b_ack!264))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!264)
                           ((_ to_fp 11 53) b_ack!264)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!264)
                                   ((_ to_fp 11 53) b_ack!264))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!264)
                 ((_ to_fp 11 53) b_ack!264)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!264)
                           ((_ to_fp 11 53) b_ack!264))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 ((_ to_fp 11 53) #x3e727e4fb7789f5c))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!264)
                           ((_ to_fp 11 53) b_ack!264))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e727e4fb7789f5c))))

(check-sat)
(exit)
