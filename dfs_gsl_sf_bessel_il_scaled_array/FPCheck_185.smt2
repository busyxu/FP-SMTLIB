(declare-fun b_ack!699 () (_ BitVec 64))
(declare-fun a_ack!700 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!700) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!699) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!700)))
(assert (not (= #x00000000 a_ack!700)))
(assert (not (= #x00000001 a_ack!700)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!699))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!699)
                       ((_ to_fp 11 53) b_ack!699))
               ((_ to_fp 11 53) b_ack!699))
       ((_ to_fp 11 53) b_ack!699)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!699))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!699)
                       ((_ to_fp 11 53) b_ack!699))
               ((_ to_fp 11 53) b_ack!699))
       ((_ to_fp 11 53) b_ack!699)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!700))
  #x3ff8000000000000))

(check-sat)
(exit)
