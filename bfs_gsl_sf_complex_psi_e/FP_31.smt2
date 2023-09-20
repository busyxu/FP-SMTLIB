(declare-fun a_ack!365 () (_ BitVec 64))
(declare-fun b_ack!364 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!365) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!365) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!365) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!364))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4034000000000001)
                    ((_ to_fp 11 53) a_ack!365))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
