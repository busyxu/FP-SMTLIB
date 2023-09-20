(declare-fun d_ack!767 () (_ BitVec 64))
(declare-fun b_ack!766 () (_ BitVec 32))
(declare-fun a_ack!769 () (_ BitVec 64))
(declare-fun c_ack!768 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!767) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!766))
(assert (not (bvsle #x00000001 b_ack!766)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!769) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!768)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  #x40881a9661d3b4d8
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4022000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!768)
                  ((_ to_fp 11 53) c_ack!768)))))

(check-sat)
(exit)
