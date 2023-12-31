(declare-fun c_ack!202 () (_ BitVec 64))
(declare-fun a_ack!203 () (_ BitVec 32))
(declare-fun b_ack!201 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!202) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!203))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!201) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!201)
                       ((_ to_fp 11 53) c_ack!202)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!201)
          ((_ to_fp 11 53) c_ack!202))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!201)
          ((_ to_fp 11 53) c_ack!202))))

(check-sat)
(exit)
