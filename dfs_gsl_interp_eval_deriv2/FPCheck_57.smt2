(declare-fun xx_ack!426 () (_ BitVec 64))
(declare-fun x0_ack!427 () (_ BitVec 64))
(declare-fun x1_ack!425 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!426) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!426) ((_ to_fp 11 53) #xabababababababab))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!426) ((_ to_fp 11 53) x0_ack!427)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!425)
               ((_ to_fp 11 53) x0_ack!427))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!426)
                       ((_ to_fp 11 53) x0_ack!427))
               ((_ to_fp 11 53) x0_ack!427))
       ((_ to_fp 11 53) xx_ack!426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) xx_ack!426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) xx_ack!426)
                       ((_ to_fp 11 53) x0_ack!427)))
       ((_ to_fp 11 53) x0_ack!427)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!425)
          ((_ to_fp 11 53) x0_ack!427))
  #xabc4c0c0c0c0c0c0))

(check-sat)
(exit)
