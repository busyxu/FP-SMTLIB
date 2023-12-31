(declare-fun a_ack!463 () (_ BitVec 32))
(declare-fun b_ack!462 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!463 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!463) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!463)))
(assert (not (= #x00000000 a_ack!463)))
(assert (= #x00000001 a_ack!463))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!462))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!462))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!462)
                  ((_ to_fp 11 53) b_ack!462)))
  #x3ff0000000000000))

(check-sat)
(exit)
