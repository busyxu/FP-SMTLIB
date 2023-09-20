(declare-fun xx_ack!412 () (_ BitVec 64))
(declare-fun x0_ack!413 () (_ BitVec 64))
(declare-fun x1_ack!409 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!410 () (_ BitVec 64))
(declare-fun y1_ack!411 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!412) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!412) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!412) ((_ to_fp 11 53) x0_ack!413)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!409)
               ((_ to_fp 11 53) x0_ack!413))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!412)
                       ((_ to_fp 11 53) x0_ack!413))
               ((_ to_fp 11 53) x0_ack!413))
       ((_ to_fp 11 53) xx_ack!412)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!412)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!412)
                       ((_ to_fp 11 53) x0_ack!413)))
       ((_ to_fp 11 53) x0_ack!413)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!411)
          ((_ to_fp 11 53) y0_ack!410))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!409)
          ((_ to_fp 11 53) x0_ack!413))))

(check-sat)
(exit)
