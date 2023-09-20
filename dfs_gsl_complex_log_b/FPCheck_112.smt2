(declare-fun y1_ack!894 () (_ BitVec 64))
(declare-fun x1_ack!897 () (_ BitVec 64))
(declare-fun y2_ack!896 () (_ BitVec 64))
(declare-fun x2_ack!895 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!897))
             (fp.abs ((_ to_fp 11 53) y1_ack!894)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!897) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!895))
        (fp.abs ((_ to_fp 11 53) y2_ack!896))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!896))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!895))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!896))
          (fp.abs ((_ to_fp 11 53) x2_ack!895)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!896))
          (fp.abs ((_ to_fp 11 53) x2_ack!895)))))

(check-sat)
(exit)
