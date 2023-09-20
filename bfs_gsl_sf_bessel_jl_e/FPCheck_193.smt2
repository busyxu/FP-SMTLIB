(declare-fun a_ack!682 () (_ BitVec 32))
(declare-fun b_ack!681 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!682 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!681) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!681) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!682)))
(assert (not (= #x00000001 a_ack!682)))
(assert (= #x00000002 a_ack!682))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!681) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!681))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!681))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!681)
          ((_ to_fp 11 53) b_ack!681))
  #xbc12d6775460a6b3))

(check-sat)
(exit)
