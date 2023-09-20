(declare-fun a_ack!430 () (_ BitVec 32))
(declare-fun b_ack!429 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!430 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!430)))
(assert (not (= #x00000001 a_ack!430)))
(assert (not (= #x00000002 a_ack!430)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) b_ack!429))
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         (bvadd #x00000001 (bvmul a_ack!430 a_ack!430) a_ack!430))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!430)
          ((_ to_fp 11 53) #x3fe0000000000000))
  b_ack!429))

(check-sat)
(exit)
