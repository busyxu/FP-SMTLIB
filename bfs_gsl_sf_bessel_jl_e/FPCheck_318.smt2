(declare-fun a_ack!1040 () (_ BitVec 32))
(declare-fun b_ack!1039 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1040 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1040)))
(assert (not (= #x00000001 a_ack!1040)))
(assert (not (= #x00000002 a_ack!1040)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1040)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1039)
                      ((_ to_fp 11 53) b_ack!1039))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!1040 a_ack!1040) a_ack!1040))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f20000000000000)
                 ((_ to_fp 11 53) b_ack!1039))
         a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1040)
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
