(declare-fun a_ack!915 () (_ BitVec 32))
(declare-fun b_ack!914 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!915 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!914) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!914) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!915) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!914) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!914) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!915)))
(assert (not (= #x00000000 a_ack!915)))
(assert (not (= #x00000001 a_ack!915)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!915))
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
