(declare-fun a_ack!756 () (_ BitVec 64))
(declare-fun b_ack!755 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!755)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!756)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) b_ack!755)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!755) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!756) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!756)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
