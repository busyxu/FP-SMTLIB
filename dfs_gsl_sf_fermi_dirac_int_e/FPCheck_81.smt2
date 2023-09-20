(declare-fun a_ack!276 () (_ BitVec 32))
(declare-fun b_ack!275 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!276 #xffffffff)))
(assert (not (= #xffffffff a_ack!276)))
(assert (not (= #x00000000 a_ack!276)))
(assert (not (= #x00000001 a_ack!276)))
(assert (= #x00000002 a_ack!276))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x554428a2f98d7242)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fc5555555555555)
                                  ((_ to_fp 11 53) b_ack!275)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) b_ack!275))
                           ((_ to_fp 11 53) b_ack!275))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc5555555555555)
                           ((_ to_fp 11 53) b_ack!275)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!275))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) b_ack!275))
                           ((_ to_fp 11 53) b_ack!275))
                   ((_ to_fp 11 53) b_ack!275))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fc5555555555555)
                 ((_ to_fp 11 53) b_ack!275)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) b_ack!275))
                           ((_ to_fp 11 53) b_ack!275))
                   ((_ to_fp 11 53) b_ack!275))))
  (FPCHECK_FMUL_ACCURACY #x3cc8000000000000 (fp.abs a!1))))

(check-sat)
(exit)
