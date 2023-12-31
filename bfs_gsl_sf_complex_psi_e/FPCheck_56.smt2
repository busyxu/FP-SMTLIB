(declare-fun a_ack!159 () (_ BitVec 64))
(declare-fun b_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!159) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!158))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!158))
               ((_ to_fp 11 53) #x4034000000000000))
       ((_ to_fp 11 53) b_ack!158)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!158))
               ((_ to_fp 11 53) b_ack!158))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x4034000000000000 b_ack!158))

(check-sat)
(exit)
