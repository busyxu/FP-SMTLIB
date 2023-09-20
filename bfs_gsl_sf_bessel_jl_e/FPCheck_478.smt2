(declare-fun a_ack!1526 () (_ BitVec 32))
(declare-fun b_ack!1525 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1526 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1525) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1525) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1526)))
(assert (not (= #x00000001 a_ack!1526)))
(assert (not (= #x00000002 a_ack!1526)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1526)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1525)
                      ((_ to_fp 11 53) b_ack!1525))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!1526 a_ack!1526) a_ack!1526))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!1525))
              a!1))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1526)
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1525) ((_ to_fp 11 53) #x408f400000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1525)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvmul a_ack!1526 a_ack!1526)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1526)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) b_ack!1525) a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
