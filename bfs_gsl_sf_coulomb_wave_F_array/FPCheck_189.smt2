(declare-fun d_ack!1243 () (_ BitVec 64))
(declare-fun b_ack!1242 () (_ BitVec 32))
(declare-fun a_ack!1245 () (_ BitVec 64))
(declare-fun c_ack!1244 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1243) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1242))
(assert (not (bvsle #x00000001 b_ack!1242)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1245) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1244)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  #xbfc1bcb2992b2855
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4042000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1244)
                  ((_ to_fp 11 53) c_ack!1244)))))

(check-sat)
(exit)
