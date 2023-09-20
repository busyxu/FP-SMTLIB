(declare-fun xx_ack!229 () (_ BitVec 64))
(declare-fun x0_ack!230 () (_ BitVec 64))
(declare-fun x1_ack!227 () (_ BitVec 64))
(declare-fun x2_ack!228 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!229) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!229) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!229) ((_ to_fp 11 53) x0_ack!230))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!229) ((_ to_fp 11 53) x1_ack!227)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!227) ((_ to_fp 11 53) xx_ack!229))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!228)
               ((_ to_fp 11 53) x1_ack!227))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!228)
          ((_ to_fp 11 53) x1_ack!227))))

(check-sat)
(exit)
