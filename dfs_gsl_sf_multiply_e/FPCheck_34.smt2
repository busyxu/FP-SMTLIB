(declare-fun a_ack!200 () (_ BitVec 64))
(declare-fun b_ack!199 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!200))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!199))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!200))
            (fp.abs ((_ to_fp 11 53) b_ack!199)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!200))
            (fp.abs ((_ to_fp 11 53) b_ack!199)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!199))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (FPCHECK_FDIV_OVERFLOW #x7feffffffffffffb (fp.abs ((_ to_fp 11 53) b_ack!199))))

(check-sat)
(exit)
