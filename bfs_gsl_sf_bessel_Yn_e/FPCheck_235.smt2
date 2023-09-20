(declare-fun a_ack!789 () (_ BitVec 32))
(declare-fun b_ack!788 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!789 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!789) #x00000001)))
(assert (not (= #x00000000 a_ack!789)))
(assert (not (= #xffffffff a_ack!789)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!788) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!788) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvsub #x00000000 a_ack!789)
                            (bvsub #x00000000 a_ack!789)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ed965fea53d6e41)
                      ((_ to_fp 11 53) b_ack!788))
              a!1))))
(assert (not (bvslt #x00000032 (bvsub #x00000000 a_ack!789))))
(assert (FPCHECK_FDIV_OVERFLOW #x4000000000000000 b_ack!788))

(check-sat)
(exit)
