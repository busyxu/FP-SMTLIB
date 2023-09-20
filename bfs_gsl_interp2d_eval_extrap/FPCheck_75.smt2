(declare-fun x1_ack!748 () (_ BitVec 64))
(declare-fun x0_ack!754 () (_ BitVec 64))
(declare-fun y0_ack!749 () (_ BitVec 64))
(declare-fun x_ack!752 () (_ BitVec 64))
(declare-fun y_ack!753 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!751 () (_ BitVec 64))
(declare-fun z0_ack!750 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!754) ((_ to_fp 11 53) x1_ack!748))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!749) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!752) ((_ to_fp 11 53) x0_ack!754))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!752) ((_ to_fp 11 53) x1_ack!748)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!753) ((_ to_fp 11 53) y0_ack!749))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!753) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!752)
                           ((_ to_fp 11 53) x0_ack!754))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!748)
                           ((_ to_fp 11 53) x0_ack!754))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!753)
                                   ((_ to_fp 11 53) y0_ack!749))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!749))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!750))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!751))))))

(check-sat)
(exit)
