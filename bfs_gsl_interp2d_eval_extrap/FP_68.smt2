(declare-fun x1_ack!2782 () (_ BitVec 64))
(declare-fun x0_ack!2786 () (_ BitVec 64))
(declare-fun y0_ack!2783 () (_ BitVec 64))
(declare-fun x_ack!2784 () (_ BitVec 64))
(declare-fun y_ack!2785 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2786) ((_ to_fp 11 53) x1_ack!2782))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2783) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2784) ((_ to_fp 11 53) x0_ack!2786))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2784) ((_ to_fp 11 53) x1_ack!2782))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2785) ((_ to_fp 11 53) y0_ack!2783))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2785) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2782)
                       ((_ to_fp 11 53) x0_ack!2786))
               ((_ to_fp 11 53) x0_ack!2786))
       ((_ to_fp 11 53) x1_ack!2782)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2782)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2782)
                       ((_ to_fp 11 53) x0_ack!2786)))
       ((_ to_fp 11 53) x0_ack!2786)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2783))
               ((_ to_fp 11 53) y0_ack!2783))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2783)))
       ((_ to_fp 11 53) y0_ack!2783)))

(check-sat)
(exit)
