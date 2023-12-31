(declare-fun a_ack!80 () (_ BitVec 64))
(declare-fun b_ack!79 () (_ BitVec 32))
(declare-fun const_arr53 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun const_arr42 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!80) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!79)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000001 b_ack!79))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!80) ((_ to_fp 11 53) #x4000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))
       #x0000000000000051))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))
       #x0000000000000051))
(assert (let ((a!1 (bvadd #x00000007
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!2 (bvadd #x00000006
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!3 (bvadd #x00000005
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!4 (bvadd #x00000004
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!5 (bvadd #x00000003
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!6 (bvadd #x00000002
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!7 (bvadd #x00000001
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!8 (select const_arr42
                   ((_ extract 31 0)
                     (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!11 (select const_arr53
                    ((_ extract 31 0)
                      (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))))))
(let ((a!9 (concat (select const_arr42 a!5)
                   (concat (select const_arr42 a!6)
                           (concat (select const_arr42 a!7) a!8))))
      (a!12 (concat (select const_arr53 a!5)
                    (concat (select const_arr53 a!6)
                            (concat (select const_arr53 a!7) a!11)))))
(let ((a!10 (concat (select const_arr42 a!2)
                    (concat (select const_arr42 a!3)
                            (concat (select const_arr42 a!4) a!9))))
      (a!13 (concat (select const_arr53 a!2)
                    (concat (select const_arr53 a!3)
                            (concat (select const_arr53 a!4) a!12)))))
(let ((a!14 ((_ extract 31 0)
              (bvadd #xffffffffffffffff (concat (select const_arr53 a!1) a!13)))))
  (bvult #x0000000000000000
         (bvadd #xffffaa7e57b36600
                (concat (select const_arr42 a!1) a!10)
                (bvmul #x0000000000000008 ((_ sign_extend 32) a!14)))))))))
(assert (let ((a!1 (bvadd #x00000007
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!2 (bvadd #x00000006
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!3 (bvadd #x00000005
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!4 (bvadd #x00000004
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!5 (bvadd #x00000003
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!6 (bvadd #x00000002
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!7 (bvadd #x00000001
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!8 (select const_arr42
                   ((_ extract 31 0)
                     (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!11 (select const_arr53
                    ((_ extract 31 0)
                      (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))))))
(let ((a!9 (concat (select const_arr42 a!5)
                   (concat (select const_arr42 a!6)
                           (concat (select const_arr42 a!7) a!8))))
      (a!12 (concat (select const_arr53 a!5)
                    (concat (select const_arr53 a!6)
                            (concat (select const_arr53 a!7) a!11)))))
(let ((a!10 (concat (select const_arr42 a!2)
                    (concat (select const_arr42 a!3)
                            (concat (select const_arr42 a!4) a!9))))
      (a!13 (concat (select const_arr53 a!2)
                    (concat (select const_arr53 a!3)
                            (concat (select const_arr53 a!4) a!12)))))
(let ((a!14 ((_ extract 31 0)
              (bvadd #xffffffffffffffff (concat (select const_arr53 a!1) a!13)))))
  (bvult (bvadd #xffffaa7e57b36600
                (concat (select const_arr42 a!1) a!10)
                (bvmul #x0000000000000008 ((_ sign_extend 32) a!14)))
         #x0000000000000071))))))
(assert (let ((a!1 (bvadd #x00000007
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!2 (bvadd #x00000006
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!3 (bvadd #x00000005
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!4 (bvadd #x00000004
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!5 (bvadd #x00000003
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!6 (bvadd #x00000002
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!7 (bvadd #x00000001
                  ((_ extract 31 0)
                    (bvmul #x0000000000000008 (concat #x00000000 b_ack!79)))))
      (a!8 (select const_arr53
                   ((_ extract 31 0)
                     (bvmul #x0000000000000008 (concat #x00000000 b_ack!79))))))
(let ((a!9 (concat (select const_arr53 a!5)
                   (concat (select const_arr53 a!6)
                           (concat (select const_arr53 a!7) a!8)))))
(let ((a!10 (concat (select const_arr53 a!2)
                    (concat (select const_arr53 a!3)
                            (concat (select const_arr53 a!4) a!9)))))
(let ((a!11 ((_ extract 31 0)
              (bvadd #xffffffffffffffff (concat (select const_arr53 a!1) a!10)))))
  (bvslt #x00000000 a!11))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!80))
                           #x3fe5555555555555))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x3ff0000000000000)))
(assert (= (select const_arr42 #x00000000) #x00))
(assert (= (select const_arr42 #x00000001) #x00))
(assert (= (select const_arr42 #x00000002) #x00))
(assert (= (select const_arr42 #x00000003) #x00))
(assert (= (select const_arr42 #x00000004) #x00))
(assert (= (select const_arr42 #x00000005) #x00))
(assert (= (select const_arr42 #x00000006) #x00))
(assert (= (select const_arr42 #x00000007) #x00))
(assert (= (select const_arr42 #x00000008) #x00))
(assert (= (select const_arr42 #x00000009) #x9a))
(assert (= (select const_arr42 #x0000000a) #x4c))
(assert (= (select const_arr42 #x0000000b) #xa8))
(assert (= (select const_arr42 #x0000000c) #x81))
(assert (= (select const_arr42 #x0000000d) #x55))
(assert (= (select const_arr42 #x0000000e) #x00))
(assert (= (select const_arr42 #x0000000f) #x00))
(assert (= (select const_arr42 #x00000010) #x80))
(assert (= (select const_arr42 #x00000011) #x11))
(assert (= (select const_arr42 #x00000012) #x89))
(assert (= (select const_arr42 #x00000013) #xa7))
(assert (= (select const_arr42 #x00000014) #x81))
(assert (= (select const_arr42 #x00000015) #x55))
(assert (= (select const_arr42 #x00000016) #x00))
(assert (= (select const_arr42 #x00000017) #x00))
(assert (= (select const_arr42 #x00000018) #x20))
(assert (= (select const_arr42 #x00000019) #x12))
(assert (= (select const_arr42 #x0000001a) #x89))
(assert (= (select const_arr42 #x0000001b) #xa7))
(assert (= (select const_arr42 #x0000001c) #x81))
(assert (= (select const_arr42 #x0000001d) #x55))
(assert (= (select const_arr42 #x0000001e) #x00))
(assert (= (select const_arr42 #x0000001f) #x00))
(assert (= (select const_arr42 #x00000020) #xc0))
(assert (= (select const_arr42 #x00000021) #x12))
(assert (= (select const_arr42 #x00000022) #x89))
(assert (= (select const_arr42 #x00000023) #xa7))
(assert (= (select const_arr42 #x00000024) #x81))
(assert (= (select const_arr42 #x00000025) #x55))
(assert (= (select const_arr42 #x00000026) #x00))
(assert (= (select const_arr42 #x00000027) #x00))
(assert (= (select const_arr42 #x00000028) #x60))
(assert (= (select const_arr42 #x00000029) #x13))
(assert (= (select const_arr42 #x0000002a) #x89))
(assert (= (select const_arr42 #x0000002b) #xa7))
(assert (= (select const_arr42 #x0000002c) #x81))
(assert (= (select const_arr42 #x0000002d) #x55))
(assert (= (select const_arr42 #x0000002e) #x00))
(assert (= (select const_arr42 #x0000002f) #x00))
(assert (= (select const_arr42 #x00000030) #x00))
(assert (= (select const_arr42 #x00000031) #x14))
(assert (= (select const_arr42 #x00000032) #x89))
(assert (= (select const_arr42 #x00000033) #xa7))
(assert (= (select const_arr42 #x00000034) #x81))
(assert (= (select const_arr42 #x00000035) #x55))
(assert (= (select const_arr42 #x00000036) #x00))
(assert (= (select const_arr42 #x00000037) #x00))
(assert (= (select const_arr42 #x00000038) #xa0))
(assert (= (select const_arr42 #x00000039) #x14))
(assert (= (select const_arr42 #x0000003a) #x89))
(assert (= (select const_arr42 #x0000003b) #xa7))
(assert (= (select const_arr42 #x0000003c) #x81))
(assert (= (select const_arr42 #x0000003d) #x55))
(assert (= (select const_arr42 #x0000003e) #x00))
(assert (= (select const_arr42 #x0000003f) #x00))
(assert (= (select const_arr42 #x00000040) #x40))
(assert (= (select const_arr42 #x00000041) #x15))
(assert (= (select const_arr42 #x00000042) #x89))
(assert (= (select const_arr42 #x00000043) #xa7))
(assert (= (select const_arr42 #x00000044) #x81))
(assert (= (select const_arr42 #x00000045) #x55))
(assert (= (select const_arr42 #x00000046) #x00))
(assert (= (select const_arr42 #x00000047) #x00))
(assert (= (select const_arr42 #x00000048) #xe0))
(assert (= (select const_arr42 #x00000049) #x15))
(assert (= (select const_arr42 #x0000004a) #x89))
(assert (= (select const_arr42 #x0000004b) #xa7))
(assert (= (select const_arr42 #x0000004c) #x81))
(assert (= (select const_arr42 #x0000004d) #x55))
(assert (= (select const_arr42 #x0000004e) #x00))
(assert (= (select const_arr42 #x0000004f) #x00))
(assert (= (select const_arr42 #x00000050) #x80))
(assert (= (select const_arr42 #x00000051) #x16))
(assert (= (select const_arr42 #x00000052) #x89))
(assert (= (select const_arr42 #x00000053) #xa7))
(assert (= (select const_arr42 #x00000054) #x81))
(assert (= (select const_arr42 #x00000055) #x55))
(assert (= (select const_arr42 #x00000056) #x00))
(assert (= (select const_arr42 #x00000057) #x00))
(assert (= (select const_arr53 #x00000000) #x00))
(assert (= (select const_arr53 #x00000001) #x00))
(assert (= (select const_arr53 #x00000002) #x00))
(assert (= (select const_arr53 #x00000003) #x00))
(assert (= (select const_arr53 #x00000004) #x00))
(assert (= (select const_arr53 #x00000005) #x00))
(assert (= (select const_arr53 #x00000006) #x00))
(assert (= (select const_arr53 #x00000007) #x00))
(assert (= (select const_arr53 #x00000008) #x0f))
(assert (= (select const_arr53 #x00000009) #x00))
(assert (= (select const_arr53 #x0000000a) #x00))
(assert (= (select const_arr53 #x0000000b) #x00))
(assert (= (select const_arr53 #x0000000c) #x00))
(assert (= (select const_arr53 #x0000000d) #x00))
(assert (= (select const_arr53 #x0000000e) #x00))
(assert (= (select const_arr53 #x0000000f) #x00))
(assert (= (select const_arr53 #x00000010) #x13))
(assert (= (select const_arr53 #x00000011) #x00))
(assert (= (select const_arr53 #x00000012) #x00))
(assert (= (select const_arr53 #x00000013) #x00))
(assert (= (select const_arr53 #x00000014) #x00))
(assert (= (select const_arr53 #x00000015) #x00))
(assert (= (select const_arr53 #x00000016) #x00))
(assert (= (select const_arr53 #x00000017) #x00))
(assert (= (select const_arr53 #x00000018) #x13))
(assert (= (select const_arr53 #x00000019) #x00))
(assert (= (select const_arr53 #x0000001a) #x00))
(assert (= (select const_arr53 #x0000001b) #x00))
(assert (= (select const_arr53 #x0000001c) #x00))
(assert (= (select const_arr53 #x0000001d) #x00))
(assert (= (select const_arr53 #x0000001e) #x00))
(assert (= (select const_arr53 #x0000001f) #x00))
(assert (= (select const_arr53 #x00000020) #x13))
(assert (= (select const_arr53 #x00000021) #x00))
(assert (= (select const_arr53 #x00000022) #x00))
(assert (= (select const_arr53 #x00000023) #x00))
(assert (= (select const_arr53 #x00000024) #x00))
(assert (= (select const_arr53 #x00000025) #x00))
(assert (= (select const_arr53 #x00000026) #x00))
(assert (= (select const_arr53 #x00000027) #x00))
(assert (= (select const_arr53 #x00000028) #x13))
(assert (= (select const_arr53 #x00000029) #x00))
(assert (= (select const_arr53 #x0000002a) #x00))
(assert (= (select const_arr53 #x0000002b) #x00))
(assert (= (select const_arr53 #x0000002c) #x00))
(assert (= (select const_arr53 #x0000002d) #x00))
(assert (= (select const_arr53 #x0000002e) #x00))
(assert (= (select const_arr53 #x0000002f) #x00))
(assert (= (select const_arr53 #x00000030) #x13))
(assert (= (select const_arr53 #x00000031) #x00))
(assert (= (select const_arr53 #x00000032) #x00))
(assert (= (select const_arr53 #x00000033) #x00))
(assert (= (select const_arr53 #x00000034) #x00))
(assert (= (select const_arr53 #x00000035) #x00))
(assert (= (select const_arr53 #x00000036) #x00))
(assert (= (select const_arr53 #x00000037) #x00))
(assert (= (select const_arr53 #x00000038) #x13))
(assert (= (select const_arr53 #x00000039) #x00))
(assert (= (select const_arr53 #x0000003a) #x00))
(assert (= (select const_arr53 #x0000003b) #x00))
(assert (= (select const_arr53 #x0000003c) #x00))
(assert (= (select const_arr53 #x0000003d) #x00))
(assert (= (select const_arr53 #x0000003e) #x00))
(assert (= (select const_arr53 #x0000003f) #x00))
(assert (= (select const_arr53 #x00000040) #x13))
(assert (= (select const_arr53 #x00000041) #x00))
(assert (= (select const_arr53 #x00000042) #x00))
(assert (= (select const_arr53 #x00000043) #x00))
(assert (= (select const_arr53 #x00000044) #x00))
(assert (= (select const_arr53 #x00000045) #x00))
(assert (= (select const_arr53 #x00000046) #x00))
(assert (= (select const_arr53 #x00000047) #x00))
(assert (= (select const_arr53 #x00000048) #x13))
(assert (= (select const_arr53 #x00000049) #x00))
(assert (= (select const_arr53 #x0000004a) #x00))
(assert (= (select const_arr53 #x0000004b) #x00))
(assert (= (select const_arr53 #x0000004c) #x00))
(assert (= (select const_arr53 #x0000004d) #x00))
(assert (= (select const_arr53 #x0000004e) #x00))
(assert (= (select const_arr53 #x0000004f) #x00))
(assert (= (select const_arr53 #x00000050) #x13))
(assert (= (select const_arr53 #x00000051) #x00))
(assert (= (select const_arr53 #x00000052) #x00))
(assert (= (select const_arr53 #x00000053) #x00))
(assert (= (select const_arr53 #x00000054) #x00))
(assert (= (select const_arr53 #x00000055) #x00))
(assert (= (select const_arr53 #x00000056) #x00))
(assert (= (select const_arr53 #x00000057) #x00))

(check-sat)
(exit)
