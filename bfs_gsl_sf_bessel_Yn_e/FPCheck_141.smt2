(declare-fun a_ack!507 () (_ BitVec 32))
(declare-fun b_ack!506 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!507 #x00000000)))
(assert (not (= #x00000000 a_ack!507)))
(assert (not (= #x00000001 a_ack!507)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!506) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!506) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!506))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!507 a_ack!507))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (not (bvslt #x00000032 a_ack!507)))
(assert (FPCHECK_FDIV_OVERFLOW #x4000000000000000 b_ack!506))

(check-sat)
(exit)
