(declare-fun a_ack!931 () (_ BitVec 32))
(declare-fun b_ack!930 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!931 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!931) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!931)))
(assert (not (= #x00000000 a_ack!931)))
(assert (not (= #x00000001 a_ack!931)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!931))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!930)
                      ((_ to_fp 11 53) b_ack!930))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (FPCHECK_FMUL_OVERFLOW #x3f20000000000000 b_ack!930))

(check-sat)
(exit)
