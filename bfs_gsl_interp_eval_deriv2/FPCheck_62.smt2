(declare-fun xx_ack!448 () (_ BitVec 64))
(declare-fun x0_ack!449 () (_ BitVec 64))
(declare-fun x1_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!446 () (_ BitVec 64))
(declare-fun y1_ack!447 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!448) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!448) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!448) ((_ to_fp 11 53) x0_ack!449))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!448) ((_ to_fp 11 53) x1_ack!445))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!445)
               ((_ to_fp 11 53) x0_ack!449))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!445)
                                   ((_ to_fp 11 53) x0_ack!449))
                           ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!447)
                    ((_ to_fp 11 53) y0_ack!446))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!445)
                    ((_ to_fp 11 53) x0_ack!449)))
    a!1)))

(check-sat)
(exit)
