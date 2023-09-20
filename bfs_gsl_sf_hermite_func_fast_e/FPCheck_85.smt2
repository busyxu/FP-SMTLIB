(declare-fun a_ack!365 () (_ BitVec 32))
(declare-fun b_ack!364 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!365 #x000003e8))
(assert (not (bvslt a_ack!365 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!364) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!365)))
(assert (= #x00000001 a_ack!365))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!364)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!364))
                           ((_ to_fp 11 53) b_ack!364))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!364)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!364))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!364))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!364))
                           ((_ to_fp 11 53) b_ack!364))
                   ((_ to_fp 11 53) b_ack!364))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!364)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!364))
                           ((_ to_fp 11 53) b_ack!364)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                    ((_ to_fp 11 53) b_ack!364))
            a!1)
    #x3ff54d264f787eb7)))

(check-sat)
(exit)
