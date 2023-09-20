(declare-fun a_ack!318 () (_ BitVec 32))
(declare-fun b_ack!317 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!318 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!317) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!318)))
(assert (not (= #x00000001 a_ack!318)))
(assert (not (= #x00000002 a_ack!318)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!317) ((_ to_fp 11 53) #x4008000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!317))
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    (bvadd #x00000001 (bvmul a_ack!318 a_ack!318) a_ack!318)))))
  (not a!1)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!318 a_ack!318))
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!317)
          ((_ to_fp 11 53) b_ack!317))))

(check-sat)
(exit)
