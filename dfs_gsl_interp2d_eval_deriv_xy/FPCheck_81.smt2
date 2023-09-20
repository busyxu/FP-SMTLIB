(declare-fun x1_ack!945 () (_ BitVec 64))
(declare-fun x0_ack!953 () (_ BitVec 64))
(declare-fun y0_ack!946 () (_ BitVec 64))
(declare-fun x_ack!951 () (_ BitVec 64))
(declare-fun y_ack!952 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!949 () (_ BitVec 64))
(declare-fun z1_ack!948 () (_ BitVec 64))
(declare-fun z3_ack!950 () (_ BitVec 64))
(declare-fun z0_ack!947 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!953) ((_ to_fp 11 53) x1_ack!945))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!946) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!951) ((_ to_fp 11 53) x0_ack!953))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!951) ((_ to_fp 11 53) x1_ack!945))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!952) ((_ to_fp 11 53) y0_ack!946))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!952) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!951) ((_ to_fp 11 53) x0_ack!953))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!951) ((_ to_fp 11 53) x1_ack!945)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!952) ((_ to_fp 11 53) y0_ack!946))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!952) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!945)
                       ((_ to_fp 11 53) x0_ack!953))
               ((_ to_fp 11 53) x0_ack!953))
       ((_ to_fp 11 53) x1_ack!945)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!945)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!945)
                       ((_ to_fp 11 53) x0_ack!953)))
       ((_ to_fp 11 53) x0_ack!953)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!946))
               ((_ to_fp 11 53) y0_ack!946))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!946)))
       ((_ to_fp 11 53) y0_ack!946)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!947)
                  ((_ to_fp 11 53) z3_ack!950))
          ((_ to_fp 11 53) z1_ack!948))
  z2_ack!949))

(check-sat)
(exit)
