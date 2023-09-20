(declare-fun x1_ack!790 () (_ BitVec 64))
(declare-fun x0_ack!794 () (_ BitVec 64))
(declare-fun y0_ack!791 () (_ BitVec 64))
(declare-fun x_ack!792 () (_ BitVec 64))
(declare-fun y_ack!793 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!794) ((_ to_fp 11 53) x1_ack!790))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!791) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!792) ((_ to_fp 11 53) x0_ack!794))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!792) ((_ to_fp 11 53) x1_ack!790))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!793) ((_ to_fp 11 53) y0_ack!791))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!793) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!792) ((_ to_fp 11 53) x0_ack!794))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!792) ((_ to_fp 11 53) x1_ack!790)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!793) ((_ to_fp 11 53) y0_ack!791))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!793) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!790)
                       ((_ to_fp 11 53) x0_ack!794))
               ((_ to_fp 11 53) x0_ack!794))
       ((_ to_fp 11 53) x1_ack!790)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!790)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!790)
                       ((_ to_fp 11 53) x0_ack!794)))
       ((_ to_fp 11 53) x0_ack!794)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!791))
               ((_ to_fp 11 53) y0_ack!791))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!791)))
       ((_ to_fp 11 53) y0_ack!791)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!791))))

(check-sat)
(exit)
