(declare-fun xx_ack!192 () (_ BitVec 64))
(declare-fun x0_ack!193 () (_ BitVec 64))
(declare-fun x1_ack!190 () (_ BitVec 64))
(declare-fun x2_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!192) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!192) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!192) ((_ to_fp 11 53) x0_ack!193))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!192) ((_ to_fp 11 53) x1_ack!190)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!190) ((_ to_fp 11 53) xx_ack!192))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!191)
               ((_ to_fp 11 53) x1_ack!190))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!191)
                  ((_ to_fp 11 53) x1_ack!190))
          ((_ to_fp 11 53) #xabc4c0c0c0c0c0c0))
  #x4008000000000000))

(check-sat)
(exit)
