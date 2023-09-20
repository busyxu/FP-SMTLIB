(declare-fun a_ack!2738 () (_ BitVec 64))
(declare-fun b_ack!2735 () (_ BitVec 64))
(declare-fun c_ack!2736 () (_ BitVec 64))
(declare-fun d_ack!2737 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2738) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2735) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2736) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!2737)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2736)
                       ((_ to_fp 11 53) a_ack!2738))
               ((_ to_fp 11 53) b_ack!2735))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (not (fp.eq ((_ to_fp 11 53) c_ack!2736)
                 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
