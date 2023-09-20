(declare-fun x1_ack!67 () (_ BitVec 64))
(declare-fun x0_ack!71 () (_ BitVec 64))
(declare-fun y0_ack!68 () (_ BitVec 64))
(declare-fun x_ack!69 () (_ BitVec 64))
(declare-fun y_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!71) ((_ to_fp 11 53) x1_ack!67))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!68) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!69) ((_ to_fp 11 53) x0_ack!71))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!69) ((_ to_fp 11 53) x1_ack!67))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!70) ((_ to_fp 11 53) y0_ack!68))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!70) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!67)
                       ((_ to_fp 11 53) x0_ack!71))
               ((_ to_fp 11 53) x0_ack!71))
       ((_ to_fp 11 53) x1_ack!67)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!67)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!67)
                       ((_ to_fp 11 53) x0_ack!71)))
       ((_ to_fp 11 53) x0_ack!71)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!68))
               ((_ to_fp 11 53) y0_ack!68))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!68)))
       ((_ to_fp 11 53) y0_ack!68)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!69 x0_ack!71))

(check-sat)
(exit)
