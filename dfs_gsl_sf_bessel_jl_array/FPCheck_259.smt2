(declare-fun a_ack!1011 () (_ BitVec 32))
(declare-fun b_ack!1010 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1011 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1011) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1011)))
(assert (not (= #x00000000 a_ack!1011)))
(assert (not (= #x00000001 a_ack!1011)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1011))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1010)
                      ((_ to_fp 11 53) b_ack!1010))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!1011)
                           (bvadd #x00000001 a_ack!1011))
                    a_ack!1011))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!1010))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 a_ack!1011))
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1010) ((_ to_fp 11 53) #x408f400000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1010)
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         (bvmul (bvadd #x00000001 a_ack!1011) (bvadd #x00000001 a_ack!1011)))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4010000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!1011))
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
