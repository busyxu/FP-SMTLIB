(declare-fun x1_ack!765 () (_ BitVec 64))
(declare-fun x0_ack!769 () (_ BitVec 64))
(declare-fun y0_ack!766 () (_ BitVec 64))
(declare-fun x_ack!767 () (_ BitVec 64))
(declare-fun y_ack!768 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!769) ((_ to_fp 11 53) x1_ack!765))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!766) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!767) ((_ to_fp 11 53) x0_ack!769))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!767) ((_ to_fp 11 53) x1_ack!765))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!768) ((_ to_fp 11 53) y0_ack!766))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!768) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!767) ((_ to_fp 11 53) x0_ack!769))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!767) ((_ to_fp 11 53) x1_ack!765)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!768) ((_ to_fp 11 53) y0_ack!766))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!768) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!765)
                       ((_ to_fp 11 53) x0_ack!769))
               ((_ to_fp 11 53) x0_ack!769))
       ((_ to_fp 11 53) x1_ack!765)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!765)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!765)
                       ((_ to_fp 11 53) x0_ack!769)))
       ((_ to_fp 11 53) x0_ack!769)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!766))
               ((_ to_fp 11 53) y0_ack!766))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!766)))
       ((_ to_fp 11 53) y0_ack!766)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!765)
          ((_ to_fp 11 53) x0_ack!769))))

(check-sat)
(exit)
