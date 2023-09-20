(declare-fun a_ack!159 () (_ BitVec 32))
(declare-fun b_ack!158 () (_ BitVec 64))
(assert (bvslt a_ack!159 #x000003e8))
(assert (not (bvslt a_ack!159 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!159)))
(assert (= #x00000001 a_ack!159))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!158)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!158))
                           ((_ to_fp 11 53) b_ack!158))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!158)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!158))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!158))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!158))
                           ((_ to_fp 11 53) b_ack!158))
                   ((_ to_fp 11 53) b_ack!158))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!158)))))

(check-sat)
(exit)
