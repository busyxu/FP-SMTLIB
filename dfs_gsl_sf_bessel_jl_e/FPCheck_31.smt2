(declare-fun a_ack!117 () (_ BitVec 32))
(declare-fun b_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!117 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!117))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!116))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!116)
                           ((_ to_fp 11 53) b_ack!116))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 ((_ to_fp 11 53) #xbe5ae64567f544e4))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!116)
                           ((_ to_fp 11 53) b_ack!116))
                   ((_ to_fp 11 53) #x3de6124613a86d09))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbe5ae64567f544e4)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbe5ae64567f544e4))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!116)
                                   ((_ to_fp 11 53) b_ack!116))
                           ((_ to_fp 11 53) #x3de6124613a86d09)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec71de3a556c734)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!116)
                                   ((_ to_fp 11 53) b_ack!116))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!116)
                                   ((_ to_fp 11 53) b_ack!116))
                           a!2))))
  (FPCHECK_FADD_ACCURACY
    #x3f81111111111111
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!116)
                    ((_ to_fp 11 53) b_ack!116))
            a!3))))))

(check-sat)
(exit)
