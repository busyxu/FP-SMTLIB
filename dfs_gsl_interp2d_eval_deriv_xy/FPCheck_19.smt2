(declare-fun x1_ack!185 () (_ BitVec 64))
(declare-fun x0_ack!191 () (_ BitVec 64))
(declare-fun y0_ack!186 () (_ BitVec 64))
(declare-fun x_ack!189 () (_ BitVec 64))
(declare-fun y_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!188 () (_ BitVec 64))
(declare-fun z0_ack!187 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!191) ((_ to_fp 11 53) x1_ack!185))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!186) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x0_ack!191))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x1_ack!185))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) y0_ack!186))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x0_ack!191))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!189) ((_ to_fp 11 53) x1_ack!185))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) y0_ack!186))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!190) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!185)
                       ((_ to_fp 11 53) x0_ack!191))
               ((_ to_fp 11 53) x0_ack!191))
       ((_ to_fp 11 53) x1_ack!185)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!185)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!185)
                       ((_ to_fp 11 53) x0_ack!191)))
       ((_ to_fp 11 53) x0_ack!191)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!186))
               ((_ to_fp 11 53) y0_ack!186))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!186)))
       ((_ to_fp 11 53) y0_ack!186)))
(assert (FPCHECK_FSUB_ACCURACY z0_ack!187 z3_ack!188))

(check-sat)
(exit)
