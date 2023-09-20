(declare-fun b_ack!747 () (_ BitVec 64))
(declare-fun c_ack!748 () (_ BitVec 64))
(declare-fun d_ack!749 () (_ BitVec 32))
(declare-fun a_ack!750 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!747) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!748) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!748)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!749))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!747) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!747) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!747)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!750)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!748)
          ((_ to_fp 11 53) #x7ff8000000000001))
  #x3fe0000000000000))

(check-sat)
(exit)
