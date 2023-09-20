(declare-fun a_ack!110 () (_ BitVec 64))
(declare-fun b_ack!109 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!109)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!110)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!109)
                                  ((_ to_fp 11 53) a_ack!110))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!109)
                                  ((_ to_fp 11 53) a_ack!110)))
                  ((_ to_fp 11 53) a_ack!110))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) b_ack!109))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!109)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!110)
                    ((_ to_fp 11 53) #x408f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!110)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!109)
          ((_ to_fp 11 53) a_ack!110))
  a_ack!110))

(check-sat)
(exit)
