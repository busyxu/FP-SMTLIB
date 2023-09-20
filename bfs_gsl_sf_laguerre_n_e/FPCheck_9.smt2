(declare-fun a_ack!51 () (_ BitVec 32))
(declare-fun c_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!49 () (_ BitVec 64))
(assert (not (bvslt a_ack!51 #x00000000)))
(assert (not (= #x00000000 a_ack!51)))
(assert (not (= #x00000001 a_ack!51)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!50) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!51))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!49)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.div roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!49)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
