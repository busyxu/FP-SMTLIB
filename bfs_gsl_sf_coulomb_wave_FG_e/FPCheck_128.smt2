(declare-fun b_ack!831 () (_ BitVec 64))
(declare-fun c_ack!832 () (_ BitVec 64))
(declare-fun d_ack!833 () (_ BitVec 32))
(declare-fun a_ack!834 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!831) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!832) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!832)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!833))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!831) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!831) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) a_ack!834))
            ((_ to_fp 11 53) #x4083ec744754dd24))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 a_ack!834))

(check-sat)
(exit)
