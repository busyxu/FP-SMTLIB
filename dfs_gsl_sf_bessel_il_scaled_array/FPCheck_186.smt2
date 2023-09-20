(declare-fun b_ack!701 () (_ BitVec 64))
(declare-fun a_ack!702 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!702) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!702)))
(assert (not (= #x00000000 a_ack!702)))
(assert (not (= #x00000001 a_ack!702)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!701)
                       ((_ to_fp 11 53) b_ack!701))
               ((_ to_fp 11 53) b_ack!701))
       ((_ to_fp 11 53) b_ack!701)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!701)
                       ((_ to_fp 11 53) b_ack!701))
               ((_ to_fp 11 53) b_ack!701))
       ((_ to_fp 11 53) b_ack!701)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!702))
  #x3ff8000000000000))

(check-sat)
(exit)
